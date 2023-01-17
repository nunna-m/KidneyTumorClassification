python3 -m ktc train --whichos remote --modalities am dc --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities am ec --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities am pc --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities dc tm --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities ec tm --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities pc tm --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities am dc ec --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities am ec pc --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact
python3 -m ktc train --whichos remote --modalities am dc pc --method both --network vgg16_pretrained_medmnist_lblck --config "configfiles/extra/data_options.yaml" --max_steps 50 --checkpoint_path "/kw_resources/pre_trained_models/vgg16_imgnet/cp.ckpt" --filename vgg16_pretrained_medmnist_lblck_exact