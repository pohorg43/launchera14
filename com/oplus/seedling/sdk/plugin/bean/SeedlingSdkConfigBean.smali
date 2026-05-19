.class public final Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;
.super Lcom/oplus/pantanal/plugin/bean/ConfigBean;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

.field private final hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;


# direct methods
.method public constructor <init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/HashEntity;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/pantanal/plugin/bean/ConfigBean;-><init>()V

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/HashEntity;ILjava/lang/Object;)Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;
    .registers 5

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_6

    iget-object p1, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    :cond_6
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_c

    iget-object p2, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    :cond_c
    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->copy(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/HashEntity;)Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final component2()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final copy(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/HashEntity;)Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;
    .registers 3

    new-instance p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    invoke-direct {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/HashEntity;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iget-object v3, p1, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iget-object p1, p1, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final getHashLite()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final getHashStandard()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    if-nez p0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashLite:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/bean/SeedlingSdkConfigBean;->hashStandard:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeedlingSdkConfigBean(hashLite="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", hashStandard="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
