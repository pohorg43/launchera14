.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/desktopmode/DesktopTasksController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isDesktopDensityOverrideSet()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->access$getDESKTOP_DENSITY_ALLOWED_RANGE$cp()Ly4/d;

    move-result-object p0

    iget v0, p0, Ly4/b;->a:I

    iget p0, p0, Ly4/b;->b:I

    invoke-static {}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->access$getDESKTOP_DENSITY_OVERRIDE$cp()I

    move-result v1

    const/4 v2, 0x0

    if-gt v0, v1, :cond_12

    if-gt v1, p0, :cond_12

    const/4 v2, 0x1

    :cond_12
    return v2
.end method
