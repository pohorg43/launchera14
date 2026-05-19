.class public final Lcom/android/launcher3/allapps/branch/BranchLabelsView$setLabels$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/branch/BranchLabelsView;->setLabels(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/allapps/branch/BranchLabelsView$LabelTextProvider<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchLabelsView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchLabelsView.kt\ncom/android/launcher3/allapps/branch/BranchLabelsView$setLabels$1\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,316:1\n107#2:317\n79#2,22:318\n*S KotlinDebug\n*F\n+ 1 BranchLabelsView.kt\ncom/android/launcher3/allapps/branch/BranchLabelsView$setLabels$1\n*L\n171#1:317\n171#1:318,22\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getLabelText(Landroid/widget/TextView;ILjava/lang/Object;)Ljava/lang/CharSequence;
    .registers 4

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/branch/BranchLabelsView$setLabels$1;->getLabelText(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getLabelText(Landroid/widget/TextView;ILjava/lang/String;)Ljava/lang/CharSequence;
    .registers 8

    const-string p0, "data"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    const/4 p2, 0x0

    move v0, p2

    move v1, v0

    :goto_e
    if-gt v0, p0, :cond_33

    if-nez v1, :cond_14

    move v2, v0

    goto :goto_15

    :cond_14
    move v2, p0

    :goto_15
    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v2

    if-gtz v2, :cond_23

    move v2, p1

    goto :goto_24

    :cond_23
    move v2, p2

    :goto_24
    if-nez v1, :cond_2d

    if-nez v2, :cond_2a

    move v1, p1

    goto :goto_e

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_2d
    if-nez v2, :cond_30

    goto :goto_33

    :cond_30
    add-int/lit8 p0, p0, -0x1

    goto :goto_e

    :cond_33
    :goto_33
    add-int/2addr p0, p1

    invoke-interface {p3, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
