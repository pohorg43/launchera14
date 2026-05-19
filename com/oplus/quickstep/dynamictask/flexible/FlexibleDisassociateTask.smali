.class public final Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_Disassociate"


# instance fields
.field private final containerTaskId:I

.field private final embeddedTaskId:I

.field private final needExit:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask$Companion;

    return-void
.end method

.method public constructor <init>(IIZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->embeddedTaskId:I

    iput p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->containerTaskId:I

    iput-boolean p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->needExit:Z

    return-void
.end method

.method private final exitFlexibleEmbeddedTask()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->embeddedTaskId:I

    invoke-virtual {v0, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->exitFlexibleEmbeddedTask(I)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_11

    :catchall_c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_11
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1e

    const-string v0, "exitFlexibleEmbeddedTask(), e="

    const-string v1, "RFT_Disassociate"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method private final removeEmbeddedContainerTask()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->embeddedTaskId:I

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->containerTaskId:I

    invoke-virtual {v0, v1, p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->removeEmbeddedContainerTask(II)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_13

    :catchall_e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_13
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_20

    const-string v0, "removeEmbeddedContainerTask(), e="

    const-string v1, "RFT_Disassociate"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_20
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "DisassociateTask--run(), ["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->containerTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->embeddedTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->needExit:Z

    const-string v2, "RFT_Disassociate"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->needExit:Z

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->exitFlexibleEmbeddedTask()V

    :cond_28
    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleDisassociateTask;->removeEmbeddedContainerTask()V

    return-void
.end method
