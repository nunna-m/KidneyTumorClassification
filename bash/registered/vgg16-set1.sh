python3 -m ktc train_registered --whichos remote --modalities am --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities tm --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities dc --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities ec --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities pc --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities dc ec --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities ec pc --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop
python3 -m ktc train_registered --whichos remote --modalities dc pc --method both --network vgg16 --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_boxCrop