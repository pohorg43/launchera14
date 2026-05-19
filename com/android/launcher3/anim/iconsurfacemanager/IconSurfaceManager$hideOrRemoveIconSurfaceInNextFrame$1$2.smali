.class final Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager;->hideOrRemoveIconSurfaceInNextFrame(Landroid/view/View;Landroid/view/SurfaceControl;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lh4/z;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;

    invoke-direct {v0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManager$hideOrRemoveIconSurfaceInNextFrame$1$2;->invoke()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke()V
    .registers 2

    const-string p0, "IconSurfaceManager"

    const-string v0, "hideIconSurfaceInNextFrame currentSurface is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
