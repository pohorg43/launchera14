.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskShowScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent$Companion;

.field private static final DELAY_SHOW_MSG_TIME_LONG:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "RFT_ShowScene_Enter"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ShowSceneEnterRecent$Companion;

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
.method public delayMillis()J
    .registers 3

    const-wide/16 v0, 0xc8

    return-wide v0
.end method
