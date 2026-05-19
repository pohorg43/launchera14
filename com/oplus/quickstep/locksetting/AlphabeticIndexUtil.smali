.class public final Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAlphabeticIndexUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlphabeticIndexUtil.kt\ncom/oplus/quickstep/locksetting/AlphabeticIndexUtil\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,72:1\n107#2:73\n79#2,22:74\n*S KotlinDebug\n*F\n+ 1 AlphabeticIndexUtil.kt\ncom/oplus/quickstep/locksetting/AlphabeticIndexUtil\n*L\n29#1:73\n29#1:74,22\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil$Companion;

.field private static final MID_DOT:Ljava/lang/String; = "∙"


# instance fields
.field private final mBaseIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "*>;"
        }
    .end annotation
.end field

.field private mDefaultMiscLabel:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;->Companion:Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_22

    :cond_1e
    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    :goto_22
    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/util/Locale;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    const-string v1, "indexBuilder.buildImmutableIndex()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;->mBaseIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const-string p1, "他"

    goto :goto_51

    :cond_4f
    const-string p1, "∙"

    :goto_51
    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;->mDefaultMiscLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    const-string v0, "cs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_12
    if-gt v3, v0, :cond_37

    if-nez v4, :cond_18

    move v5, v3

    goto :goto_19

    :cond_18
    move v5, v0

    :goto_19
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v5

    if-gtz v5, :cond_27

    move v5, v1

    goto :goto_28

    :cond_27
    move v5, v2

    :goto_28
    if-nez v4, :cond_31

    if-nez v5, :cond_2e

    move v4, v1

    goto :goto_12

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_31
    if-nez v5, :cond_34

    goto :goto_37

    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_37
    :goto_37
    add-int/2addr v0, v1

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;->mBaseIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v0, p1}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v0

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    if-nez v0, :cond_56

    const-string v0, ""

    :cond_56
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_5e

    :cond_5d
    move v1, v2

    :goto_5e
    if-eqz v1, :cond_7f

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string p0, "#"

    goto :goto_7e

    :cond_73
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result p1

    if-eqz p1, :cond_7c

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_7e

    :cond_7c
    const-string p0, "∙"

    :goto_7e
    return-object p0

    :cond_7f
    return-object v0
.end method
