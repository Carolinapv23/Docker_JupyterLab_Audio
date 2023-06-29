# Docker Container with Jupyter 

## About this project.
The notebook called [Main](./ComputerVisionProject/Main.ipynb) is the file that shows the initial sequence of computer vision operation to get the desired behavior, to detect lines on a hallway selected (the current apartment where I am living). Then, the image processing pipeline is created on [lane_detection_pipeline.py](./ComputerVisionProject/lane_detection_pipeline.py) as a class that receives the image and persist values to obtain better performance with each operation with the class called `LaneDetection`. The pipeline is "unit tested" with the notebook [TestComputerVisionPipeline](./ComputerVisionProject/TestComputerVisionPipeline.ipynb). Additionally, the [TestDataSetValidation](./ComputerVisionProject/TestDataSetValidation.ipynb) notebook shows the result over the images in the folders [dataSet3](./ComputerVisionProject/dataSet3) and [dataSet4](./ComputerVisionProject/dataSet4).

## How to run and play with the project? ##

## Mac/Linux

```
./scripts/build
```

```
./scripts/run
```

## Windows:

```
docker build -t jupyter_image .
```
Then:

```
docker run -it -p 8899:8899 --name=jupyter_container_1 --cpus=2 --volume ${PWD}/Projects:/Projects --hostname=cvproject.local --rm jupyter_image
```

Once the docker container is running, open your web browser and go to http://localhost:8899. The password required is `unal2021`.

## Braitenberg ##
Pipeline notebook development [MainBraitenberg](./ComputerVisionProject/MainBraitenberg.ipynb)

Python pipeline [braitenberg_navigation.py](./ComputerVisionProject/braitenberg_navigation.py)

Final pipeline development notebook [TestBraitenberg](./ComputerVisionProject/TestBraitenberg.ipynb)
<!-- 
## Car used to capture images ##
![](./ComputerVisionProject/car.jpeg)

## Environment selected ##
![](./ComputerVisionProject/environmentTesting.jpeg) -->
