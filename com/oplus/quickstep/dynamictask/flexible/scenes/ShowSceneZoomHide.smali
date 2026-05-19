.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ShowScene_ZoomHide"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneZoomHide$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method


# virtual methods
.method public allowInTask(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_1b

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    if-eqz p1, :cond_1a

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1a

    const-string v0, "allowInTask(), displayId="

    const-string v1, "RFT_ShowScene_ZoomHide"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0

    :cond_1a
    const/4 p0, 0x1

    :cond_1b
    return p0
.end method
