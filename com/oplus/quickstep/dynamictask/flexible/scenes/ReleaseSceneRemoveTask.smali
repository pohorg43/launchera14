.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene_Remove"


# instance fields
.field private wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-void
.end method


# virtual methods
.method public final getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-object p0
.end method

.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "RFT_ReleaseScene_Remove"

    const-string v0, "release"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    const/4 p1, 0x0

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, p1, v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final setWrapper(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneRemoveTask;->wrapper:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    return-void
.end method
