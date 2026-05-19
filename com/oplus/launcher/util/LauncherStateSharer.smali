.class public final Lcom/oplus/launcher/util/LauncherStateSharer;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ENABLE:Z = true

.field public static final INSTANCE:Lcom/oplus/launcher/util/LauncherStateSharer;

.field private static final KEY_IS_LAUNCHER_ZOOM:Ljava/lang/String; = "is_oplus_launcher_zoom"

.field public static final STATE_ON_NEW_INTENT:I = 0x4

.field public static final STATE_ON_PAUSED:I = 0x2

.field public static final STATE_ON_RESUMED:I = 0x1

.field public static final STATE_ON_START:I = 0x0

.field public static final STATE_ON_STOPPED:I = 0x3

.field public static final STATE_UNDEFINED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "LauncherStateSharer"

.field private static mIsZoom:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/launcher/util/LauncherStateSharer;

    invoke-direct {v0}, Lcom/oplus/launcher/util/LauncherStateSharer;-><init>()V

    sput-object v0, Lcom/oplus/launcher/util/LauncherStateSharer;->INSTANCE:Lcom/oplus/launcher/util/LauncherStateSharer;

    const/4 v0, -0x1

    sput v0, Lcom/oplus/launcher/util/LauncherStateSharer;->mIsZoom:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isWorkspaceInZoom(Lcom/android/launcher3/Workspace;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/Workspace<",
            "*>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    xor-int/2addr v0, v1

    sget v1, Lcom/oplus/launcher/util/LauncherStateSharer;->mIsZoom:I

    if-eq v0, v1, :cond_44

    const-string v1, "isWorkspaceInZoom(), "

    const-string v2, "LauncherStateSharer"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    sput v0, Lcom/oplus/launcher/util/LauncherStateSharer;->mIsZoom:I

    :try_start_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "is_oplus_launcher_zoom"

    const/4 v3, -0x2

    invoke-static {p0, v1, v0, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_33

    goto :goto_38

    :catchall_33
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_38
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_3f

    goto :goto_44

    :cond_3f
    const-string v0, "isWorkspaceInZoom(), e="

    invoke-static {v0, p0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_44
    :goto_44
    return-void
.end method
