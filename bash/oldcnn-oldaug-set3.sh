python3 -m ktc train --whichos remote --modalities dc ec tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities ec pc tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities dc pc tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities am dc tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities am ec tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities am pc tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities am tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities dc ec pc --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50