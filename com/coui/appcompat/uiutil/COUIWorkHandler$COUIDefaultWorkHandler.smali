.class Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIDefaultWorkHandler;
.super Lcom/coui/appcompat/uiutil/COUIWorkHandler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coui/appcompat/uiutil/COUIWorkHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "COUIDefaultWorkHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler;-><init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/coui/appcompat/uiutil/COUIWorkHandler$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/coui/appcompat/uiutil/COUIWorkHandler$COUIDefaultWorkHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Landroid/os/HandlerThread;
    .registers 3

    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "COUIDefaultWorkHandler"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
