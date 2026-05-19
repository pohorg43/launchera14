.class final Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/CacheUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;

    invoke-direct {v0}, Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;->INSTANCE:Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-boolean p0, Lcom/android/launcher3/icons/BitmapInfo;->FLAG_NEW_CLONE_BADGE_STYLE:Z

    if-eqz p0, :cond_10

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08072e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_1b

    :cond_10
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f08072d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_1b
    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;->invoke()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
