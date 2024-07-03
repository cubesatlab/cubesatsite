<%-- 
    Document   : CubedOS.jsp
    Created on : Jul 9, 2015, 12:38:10 PM
    Author     : Vermont State University
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
  <%@ include file="includes/Header-CubedOS.jsp" %>
  <body>
  <main id="maincontent">
  <div id="page">
    <div class="post">
      <h1 class="ada_compliance">Project Overview</h1>

      <p>CubedOS was developed with the purpose of providing a robust software platform for
      CubeSat missions and of easing the development of CubeSat flight software. In many
      respects the goals of CubedOS are similar to those of the <b><a
      href="http://coreflightsystem.org/">Core Flight System</a></b> (cFE/CFS) written by NASA
      Goddard Space Flight Center. However, unlike cFE, CubedOS is written in SPARK with
      critical sections verified to be free of the possibility of runtime error. SPARK has also
      been used to provide some other correctness properties in certain cases.</p>

      <p>The intent is for CubedOS to be general enough and modular enough for other groups to
      profitably employ the system. Since every mission uses different hardware and has
      different software requirements, CubedOS is designed as a framework into which
      <i>modules</i> can be plugged to implement whatever mission functionality is required.
      CubedOS provides inter-module communication and other common services required by many
      missions. CubedOS thus serves both as a kind of operating environment and as a library of
      useful tools and functions.</p>

      <p>It is our intention that all CubedOS modules also be written in SPARK and at least
      proved free of runtime error. However, CubedOS also allows modules, or parts of modules,
      to be written in full Ada or C if appropriate. This allows CubedOS to take advantage of
      third party C libraries or to integrate with an existing C code base.</p>

      <p>CubedOS can run directly on top of the hardware, or on top of an operating system such
      as Linux or VxWorks, with the assistance of the Ada runtime system. For example, CubedOS
      makes use of Ada tasking without directly invoking the underlying system's support for
      threads. This simplifies the implementation of CubedOS while improving its portability.
      However, it does require that an Ada runtime system be available for all envisioned
      targets.</p>

      <p>For resources that are not accessible through the Ada runtime system, CubedOS driver
      modules can be written that interact with the underlying operating system or hardware more
      directly. Although these modules would not be widely portable, they could, in some cases,
      be written to provide a kind of low level abstraction layer (LLAL) with a portable
      interface. However, we have not yet attempted to standardize the LLAL interface. We see
      that as an area for future work.</p>

      <p>The architecture of CubedOS is a collection of active and passive modules, where each
      active module contains one or more Ada tasks. Although CubedOS is written in SPARK there
      need not be a one-to-one correspondence between CubedOS modules and SPARK packages. In
      fact, modules are routinely written as a collection of Ada packages in a package
      hierarchy.</p>

      <p>Critical to the plug-and-play nature of CubedOS, each active module is self-contained
      and does not make direct use of any code in any other active module, although passive
      modules serving as library components can be used. All inter-module communication is done
      through the CubedOS infrastructure with no direct sharing of data or executable content.
      In this respect CubedOS modules are similar to processes in a conventional operating
      system. One consequence of this policy is that a library used by several modules must be
      either duplicated in each module or provided as an independent, passive module of its own.
      In this respect passive modules resemble shared libraries in a conventional operating
      system and have similar concerns regarding task safety and global data management.</p>

      <p>In the language of operating systems, CubedOS can be said to have a microkernel
      architecture where task management is provided by the Ada runtime system. Both low level
      facilities, such as device drivers, and high level facilities, such as communication
      protocol handlers or navigation algorithms, are all implemented as CubedOS modules. All
      modules are treated equally by CubedOS; any layered structuring of the modules is imposed
      by programmer convention.</p>

      <p>In addition to inter-module communication, CubedOS provides several general purpose
      facilities. In some cases only the interface to the facility is described and different
      implementations are possible (even encouraged). Having a standard interface allows other
      components of CubedOS to be programmed against that interface without concern about the
      underlying implementation.</p>

      <ul>
        <li>An asynchronous message passing system with mailboxes. This, together with the
        underlying Ada runtime system constitutes the "kernel" of CubedOS.</li>
        <li>A runtime library of useful packages, all verified with SPARK.</li>
        <li>A real time clock module.</li>
        <li>A file system interface.</li>
        <li>A radio communications interface.</li>
        <li>Modules providing support for <b><a
        href="http://public.ccsds.org/default.aspx">CCSDS</a></b> protocols.
        </li>
      </ul>

      <p>A CubedOS system also requires drivers for the various hardware components in the
      system. Although the specific drivers required will vary from mission to mission, CubedOS
      does provide a general <i>driver model</i> that allows components to communicate with
      drivers fairly generically. In a typical system there will be low level drivers for
      accessing hardware busses as well as higher level drivers for sending/receiving commands
      from subsystems such as the radio, the power system, the camera, etc. The low level
      drivers constitute the CubedOS LLAL.</p>

      <p>CubedOS provides several advantages over "home grown" frameworks:</p>
      <ul>
        <li>The message passing architecture is highly concurrent and allows many overlapping
        activities to be programmed in a natural way. For example, our implementation of the
        CCSDS File Delivery Protocol (CFDP) takes advantage of this.</li>

        <li>The architecture provides a lot of runtime flexibility; programs can adapt their
        communication patterns at runtime.</li>

        <li>The architecture is consistent with the restrictions of Ada's Ravenscar
        profile.</li>
      </ul>

      <p>CubedOS also has some significant disadvantages over more customized solutions:</p>
      <ul>
        <li>Because CubedOS messages are just octet sequences, there is runtime overhead
        associated with encoding and decoding them.</li>

        <li>CubedOS sacrifices some static type safety; decoded messages must be validated at
        runtime with type errors being handled during the validation process. This is
        particularly worrisome in light of CubedOS's goal of providing robust assurances of
        correctness. We mitigate this problem somewhat with the use of a special tool, XDR2OS3,
        (under development) that automatically generates fully typed message encoding/decoding
        subprograms.</li>
      </ul>

      <p>CubedOS is currently a work in progress. It is our intention to release CubedOS as open
      source once it has been further matured and refined. Specifically, we intend to release
      CubedOS after the code base has been reviewed to verify that it is free from International
      Traffic in Arms Regulations (ITAR) restrictions. We anticipate this to happen in mid
      2018.</p>
    </div>

    <!-- BEGIN FOOTER -->
    <div id="footer">
      <p>&#169; Copyright 2019 by Vermont State University | Last Revised: December 20, 2019</p>
    </div>
    <!-- END FOOTER -->
  </div>
  </body>
</html>
