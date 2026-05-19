.class Lcom/android/launcher/layout/CustomLayoutHelper$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/layout/CustomLayoutHelper$ScanFinishObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/CustomLayoutHelper$3;->onFeatureChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/launcher/layout/CustomLayoutHelper$3;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper$3;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3$1;->this$1:Lcom/android/launcher/layout/CustomLayoutHelper$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    const-string v0, "Layout"

    const-string v1, "CustomLayoutHelper"

    const-string v2, "extra workspace observer inner."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3$1;->this$1:Lcom/android/launcher/layout/CustomLayoutHelper$3;

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$3;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-virtual {p0}, Lcom/android/launcher/layout/CustomLayoutHelper;->onExtraWorkspacePathChanged()V

    return-void
.end method
