.class public final Lcom/oplus/quickstep/common/observers/StudyModeObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/confinemode/OplusConfineModeManager$ConfineModeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/common/observers/StudyModeObserver$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/common/observers/StudyModeObserver$Companion;

.field private static final TAG:Ljava/lang/String; = "StudyModeObserver"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/common/observers/StudyModeObserver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/common/observers/StudyModeObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/common/observers/StudyModeObserver;->Companion:Lcom/oplus/quickstep/common/observers/StudyModeObserver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isInStudyMode(I)Z
    .registers 2

    const/16 p0, 0x10

    if-ne p1, p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onChange(III)V
    .registers 6

    const-string p3, "onChange: old="

    const-string v0, ", new="

    const-string v1, "StudyModeObserver"

    invoke-static {p3, p1, v0, p2, v1}, Lcom/android/common/config/j;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/common/observers/StudyModeObserver;->isInStudyMode(I)Z

    move-result p0

    if-eqz p0, :cond_22

    const-string p0, "changeState -> add flag StudyModeObserver"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->addFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)V

    goto :goto_40

    :cond_22
    sget-object p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->INSTANCE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    sget-object p2, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;->STUDY_MODE:Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->hasFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)Z

    move-result p1

    if-eqz p1, :cond_40

    const-string p1, "changeState -> remove flag StudyModeObserver"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper;->removeFlag(Lcom/oplus/quickstep/gesture/helper/SpecialSceneHelper$SpecialScene;)V

    :cond_40
    :goto_40
    return-void
.end method
