.class final Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;

    invoke-direct {v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;->INSTANCE:Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Matrix;
    .registers 1

    new-instance p0, Landroid/graphics/Matrix;

    invoke-direct {p0}, Landroid/graphics/Matrix;-><init>()V

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl$mGridContentProtectIconMatrix$2;->invoke()Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method
