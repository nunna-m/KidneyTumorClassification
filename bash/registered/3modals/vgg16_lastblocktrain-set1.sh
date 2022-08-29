python3 -m ktc train_registered --whichos remote --modalities am  dc  ec --method both --network vgg16_lastblocktrain --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_lastblocktrain_boxCrop
python3 -m ktc train_registered --whichos remote --modalities am  dc  pc --method both --network vgg16_lastblocktrain --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_lastblocktrain_boxCrop
python3 -m ktc train_registered --whichos remote --modalities am  dc  tm --method both --network vgg16_lastblocktrain --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_lastblocktrain_boxCrop
python3 -m ktc train_registered --whichos remote --modalities am  ec  pc --method both --network vgg16_lastblocktrain --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_lastblocktrain_boxCrop
python3 -m ktc train_registered --whichos remote --modalities am  ec  tm --method both --network vgg16_lastblocktrain --config "configfiles/extra/data_options_registered.yaml" --max_steps 50 --filename vgg16_lastblocktrain_boxCrop