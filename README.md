# WebEnum
Website enumeration script for getting details of nmap and gobuster scans
<img src = "https://github.com/MangalNathYadav/WebEnum/blob/main/image_2022-03-26_090611.png" alt=WebEnum > </img>
<blockquote>
<p dir="auto">The script wil do NMAP scan  <br>
The script wil do gobuster scan</p>
</blockquote> 

I created this script for making the enumeration little bit easy.
You do not need to write commands here, using this script you just have to pass the target ip webste url thats it.


<h2>Tutorial</h2>
<blockquote>
<p dir="auto">
  <h4> Step -1 </h4>
  <div class="highlight"><pre class="highlight"><code> git clone https://github.com/MangalNathYadav/WebEnum.git 

</code></pre></div>
  <h4> Step -2 </h4>
  <div class="highlight"><pre class="highlight"><code> cd WebEnum

</code></pre></div>
  <h4> Step -3 </h4>
  <div class="highlight"><pre class="highlight"><code> chmod +x *
</code></pre></div>
<h4> Step -4 </h4>
  <div class="highlight"><pre class="highlight"><code> ./install.sh
</code></pre></div>
  </blackquote>
<h3>Developer : MG Hacker </h3>


<h2> Error Solving </h2>
<blockquote> IF you find any this type of error 
<img src= "https://github.com/MangalNathYadav/WebEnum/blob/main/image_2022-03-26_085241.png" alt=error_> </img>

<h4> Then run this command then try to run script </h4>
 <div class="highlight"><pre class="highlight"><code>sed -i -e 's/\r$//' WebEnum.sh

</code></pre></div>
Then again run the script 
<div class="highlight"><pre class="highlight"><code>./WebEnum.sh

</code></pre></div>
