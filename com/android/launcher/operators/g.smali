.class public final synthetic Lcom/android/launcher/operators/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/LauncherModel$CallbackTask;


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/operators/g;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/launcher3/model/BgDataModel$Callbacks;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/operators/g;->a:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lcom/android/launcher/operators/OobeLayoutCustomize$2;->l(Ljava/util/ArrayList;Lcom/android/launcher3/model/BgDataModel$Callbacks;)V

    return-void
.end method
