.class public final synthetic Lcom/android/launcher3/model/w0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/w0;

.field public static final synthetic b:Lcom/android/launcher3/model/w0;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/w0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/w0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/w0;->a:Lcom/android/launcher3/model/w0;

    new-instance v0, Lcom/android/launcher3/model/w0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/w0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/w0;->b:Lcom/android/launcher3/model/w0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    invoke-interface {p1}, Lcom/android/launcher3/model/BgDataModel$Callbacks;->onHotSeatFinishBinding()V

    return-void
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
