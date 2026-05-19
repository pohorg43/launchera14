.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $it:Landroidx/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Landroidx/lifecycle/Observer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;->$it:Landroidx/lifecycle/Observer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;->$launcher:Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;->$it:Landroidx/lifecycle/Observer;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
