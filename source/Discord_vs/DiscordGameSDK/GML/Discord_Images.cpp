

#include "pch.h"
#include "utils.h"

#include "Extension_Interface.h"
#include "YYRValue.h"

#include "DiscordCommon.h"

#include <filesystem>
#include <string>
#include <vector>
#include <sstream>
#include <iostream>


YYEXPORT void Discord_Images_Fetch(RValue& Result, CInstance* selfinst, CInstance* otherinst, int argc, RValue* arg)
{
	const int64 userId = YYGetInt64(arg, 0);
	int size = YYGetReal(arg, 1);

    discord::ImageHandle handle{};
    handle.SetId(userId);
    handle.SetType(discord::ImageType::User);
    handle.SetSize(size);
	state.core->ImageManager().Fetch(handle,true,[&](discord::Result result, discord::ImageHandle handle)
		{
			int map = CreateDsMap(0, 0);
			DsMapAddString(map, "type", "Discord_Images_Fetch");
			DsMapAddDouble(map, "result", (double)result);
			DsMapAddInt64(map, "userId", handle.GetId());

			if (result == discord::Result::Ok) 
			{
				DsMapAddDouble(map, "success", 1.0);

				discord::ImageDimensions dims{};
				state.core->ImageManager().GetDimensions(handle, &dims);

				std::vector<uint8_t> data;
				int buffer_size = dims.GetWidth() * dims.GetHeight() * 4;
				DsMapAddDouble(map, "width", dims.GetWidth());
				DsMapAddDouble(map, "height", dims.GetHeight());
				
				data.reserve(buffer_size);
				uint8_t* d = data.data();
				state.core->ImageManager().GetData(handle, d, buffer_size);

				double buffer = CreateBuffer(buffer_size, eBuffer_Format_Fixed, 1);
				BufferWriteContent(buffer, 0, d, buffer_size);

				DsMapAddDouble(map, "buffer", buffer);
			}
			else 
			{
				DsMapAddDouble(map, "success", 0.0);
			}

			CreateAsyncEventWithDSMap(map, 70);
		});
}
