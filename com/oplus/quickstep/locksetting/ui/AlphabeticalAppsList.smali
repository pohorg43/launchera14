.class public final Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;,
        Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$Companion;

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Scroll.AlphabeticalAppsList"


# instance fields
.field private final fastScrollSectionInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mDots:Ljava/lang/String;

.field private final mIndex:Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->Companion:Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->fastScrollSectionInfoList:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;

    invoke-direct {v0, p1}, Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mIndex:Lcom/oplus/quickstep/locksetting/AlphabeticIndexUtil;

    const v0, 0x7f120256

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mDots:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final createSectionInfo()V
    .registers 10

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->fastScrollSectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mAppEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    iget-object v6, v5, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/common/sort/AppNameComparator;->getFirstSpellForSearchBar(Ljava/lang/String;)C

    move-result v6

    const/16 v7, 0x61

    const/4 v8, 0x1

    if-gt v7, v6, :cond_33

    const/16 v7, 0x7b

    if-ge v6, v7, :cond_33

    move v7, v8

    goto :goto_34

    :cond_33
    move v7, v2

    :goto_34
    if-eqz v7, :cond_3a

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    :cond_3a
    const/16 v7, 0x23

    if-eq v6, v7, :cond_43

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    goto :goto_45

    :cond_43
    iget-object v6, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mDots:Ljava/lang/String;

    :goto_45
    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5d

    new-instance v1, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;

    iget-object v3, v5, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v6, v4, v3}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v3, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->fastScrollSectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v1

    move-object v1, v6

    :cond_5d
    add-int/lit8 v4, v4, 0x1

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getItemCount()I

    move-result v5

    add-int/2addr v5, v8

    invoke-virtual {v3, v5}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->setItemCount(I)V

    goto :goto_12

    :cond_6b
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mAppEntries:Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "createSectionInfo -- Section count = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->fastScrollSectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", totalApp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Scroll.AlphabeticalAppsList"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->fastScrollSectionInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;

    invoke-virtual {v1}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->getFastScrollToPos()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000  # 1.0f

    mul-float/2addr v2, v3

    int-to-float v3, v0

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->setTouchFraction(F)V

    goto :goto_9a

    :cond_b4
    return-void
.end method

.method public final getFastScrollSectionInfoList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->fastScrollSectionInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getMAppEntries()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mAppEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final setAppEntries(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appEntries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mAppEntries:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMAppEntries(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;->mAppEntries:Ljava/util/ArrayList;

    return-void
.end method
