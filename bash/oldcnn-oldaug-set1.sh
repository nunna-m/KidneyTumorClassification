python3 -m ktc train --whichos remote --modalities am --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities tm --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities dc --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities ec --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities pc --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities dc ec --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities ec pc --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50
python3 -m ktc train --whichos remote --modalities dc pc --method both --network oldcnn --config "configfiles/extra/data_options.yaml" --max_steps 50