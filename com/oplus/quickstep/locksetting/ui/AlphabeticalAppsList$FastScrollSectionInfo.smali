.class public final Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FastScrollSectionInfo"
.end annotation


# instance fields
.field private fastScrollToPos:I

.field private itemCount:I

.field private sectionName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private touchFraction:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    const-string v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToPos:I

    iput-object p3, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getFastScrollToPos()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToPos:I

    return p0
.end method

.method public final getItemCount()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->itemCount:I

    return p0
.end method

.method public final getSectionName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->title:Ljava/lang/String;

    return-object p0
.end method

.method public final getTouchFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    return p0
.end method

.method public final setFastScrollToPos(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToPos:I

    return-void
.end method

.method public final setItemCount(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->itemCount:I

    return-void
.end method

.method public final setSectionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public final setTouchFraction(F)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SectionInfo{sectionName=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->fastScrollToPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", itemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->itemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", touchFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/locksetting/ui/AlphabeticalAppsList$FastScrollSectionInfo;->touchFraction:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
