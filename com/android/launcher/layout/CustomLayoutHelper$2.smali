.class Lcom/android/launcher/layout/CustomLayoutHelper$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/util/OnFeatureChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/layout/CustomLayoutHelper;->setOnExtraFilterPackageChangedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/layout/CustomLayoutHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/layout/CustomLayoutHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$2;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureChanged()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getFilterPackagesForExtraList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$2;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$600(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher/layout/CustomLayoutHelper$2;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v1}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$600(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extra fiter package feature changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Layout"

    const-string v2, "CustomLayoutHelper"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$2;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    invoke-static {v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$600(Lcom/android/launcher/layout/CustomLayoutHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_43

    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$2;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$702(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z

    goto :goto_49

    :cond_43
    iget-object p0, p0, Lcom/android/launcher/layout/CustomLayoutHelper$2;->this$0:Lcom/android/launcher/layout/CustomLayoutHelper;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/launcher/layout/CustomLayoutHelper;->access$702(Lcom/android/launcher/layout/CustomLayoutHelper;Z)Z

    :goto_49
    return-void
.end method
