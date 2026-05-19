.class final Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/sys/AudioDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AudioProcess"
.end annotation


# instance fields
.field private final packageName:Ljava/lang/String;

.field private final pid:I

.field private final processName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5

    const-string v0, "processName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    iput-object p2, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    const-string p1, ":"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p2, p1, v0, v0, v1}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v0}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_22

    const-string p1, "PKG_None"

    :cond_22
    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->packageName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;ILjava/lang/String;ILjava/lang/Object;)Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget p1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->copy(ILjava/lang/String;)Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    return p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(ILjava/lang/String;)Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;
    .registers 3

    const-string p0, "processName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    iget v3, p1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getPid()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    return p0
.end method

.method public final getProcessName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "AudioProcess(pid="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/sys/AudioDetector$AudioProcess;->processName:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
