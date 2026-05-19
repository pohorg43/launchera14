.class public final Lcom/android/launcher3/allapps/branch/BranchTransformation;
.super Lg1/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/branch/BranchTransformation$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/allapps/branch/BranchTransformation$Companion;

.field private static final TRANSFORMATIONS_ID:Ljava/lang/String; = "com.android.launcher3.allapps.branch.BranchTransformation"

.field private static final TRANSFORMATIONS_ID_BYTES:[B


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchTransformation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchTransformation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchTransformation;->Companion:Lcom/android/launcher3/allapps/branch/BranchTransformation$Companion;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    const-string v1, "forName(\"UTF-8\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "com.android.launcher3.allapps.branch.BranchTransformation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchTransformation;->TRANSFORMATIONS_ID_BYTES:[B

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lg1/f;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/branch/BranchTransformation;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchTransformation;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public transform(La1/d;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5

    const-string/jumbo p3, "pool"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "toTransform"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    if-lez p1, :cond_25

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-gtz p1, :cond_19

    goto :goto_25

    :cond_19
    sget-object p1, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object p0, p0, Lcom/android/launcher3/allapps/branch/BranchTransformation;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_24

    goto :goto_25

    :cond_24
    move-object p2, p0

    :cond_25
    :goto_25
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .registers 2

    const-string/jumbo p0, "messageDigest"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchTransformation;->TRANSFORMATIONS_ID_BYTES:[B

    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method
