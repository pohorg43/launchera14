.class Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/transition/Tracer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogAndPrintln"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ShellTransitionTracer"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->e(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->i(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$200(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/transition/Tracer$LogAndPrintln;->e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method private static e(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "ShellTransitionTracer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_1e
    return-void
.end method

.method private static e(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    const-string v0, "ShellTransitionTracer"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ::\n "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_26
    return-void
.end method

.method private static i(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    const-string v0, "ShellTransitionTracer"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    :cond_d
    return-void
.end method
