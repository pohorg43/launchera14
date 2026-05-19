.class public final Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;
.super Lcom/oplus/pantanal/plugin/bean/ConfigBean;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;


# direct methods
.method public constructor <init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;-><init>()V

    iput-object p1, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-void
.end method

.method public static synthetic copy$default(Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;Lcom/oplus/pantanal/plugin/bean/HashEntity;ILjava/lang/Object;)Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    iget-object p1, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    :cond_6
    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->copy(Lcom/oplus/pantanal/plugin/bean/HashEntity;)Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final copy(Lcom/oplus/pantanal/plugin/bean/HashEntity;)Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;
    .registers 2

    new-instance p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iget-object p1, p1, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public final getHashCardGroup()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->hashCode()I

    move-result p0

    :goto_a
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lpantanal/app/groupcard/plugin/bean/CardGroupConfigBean;->hashCardGroup:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardGroupConfigBean(hashCardGroup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
