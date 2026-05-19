.class final Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;

    invoke-direct {v0}, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;->INSTANCE:Lcom/android/launcher3/anim/IconPressAnimManager$doPressFeedbackAnim$3$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getCpu()Lcom/android/common/util/LauncherBooster$CpuBoost;

    move-result-object p0

    const/16 v0, 0x7dd

    invoke-virtual {p0, v0}, Lcom/android/common/util/LauncherBooster$CpuBoost;->requestCpuResources(I)V

    return-void
.end method
