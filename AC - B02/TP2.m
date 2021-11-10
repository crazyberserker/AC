filename = 'ASRF20.wav';

[audio,Fs] = audioread(filename);

%Audio plotting in time
audio = audio(:,1);
    dt = 1/Fs;
    t = 0:dt:(length(audio)*dt)-dt;
    plot(t,audio); xlabel('Seconds'); ylabel('Amplitude');

    
fff = fft(audio);
pow=fff.*conj(fff);
sum(pow)

fprintf('This is the power')
y = rms(audio)^2
