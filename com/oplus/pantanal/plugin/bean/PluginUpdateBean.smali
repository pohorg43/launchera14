.class public final Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final child:Ljava/lang/String;

.field private final hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

.field private final localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

.field private final parent:Ljava/lang/String;

.field private final remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

.field private final soFile:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "remoteConfig"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "soFile"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iput-object p2, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    iput-object p3, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    iput-object p4, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_6

    const-string p6, ""

    :cond_6
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;
    .registers 13

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_6

    iget-object p1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    :cond_6
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_c

    iget-object p2, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    :cond_c
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    :cond_21
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_28

    iget-object p6, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    :cond_28
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->copy(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final component2()Lcom/oplus/pantanal/plugin/bean/ConfigBean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    return-object p0
.end method

.method public final component3()Lcom/oplus/pantanal/plugin/bean/ConfigBean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;
    .registers 14

    const-string p0, "remoteConfig"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "parent"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "child"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "soFile"

    invoke-static {p6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;-><init>(Lcom/oplus/pantanal/plugin/bean/HashEntity;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Lcom/oplus/pantanal/plugin/bean/ConfigBean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;

    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iget-object v3, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    iget-object v3, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    iget-object v3, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    return v2

    :cond_43
    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4e

    return v2

    :cond_4e
    return v0
.end method

.method public final getChild()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    return-object p0
.end method

.method public final getHashEntity()Lcom/oplus/pantanal/plugin/bean/HashEntity;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    return-object p0
.end method

.method public final getLocalConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    return-object p0
.end method

.method public final getParent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    return-object p0
.end method

.method public final getRemoteConfig()Lcom/oplus/pantanal/plugin/bean/ConfigBean;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    return-object p0
.end method

.method public final getSoFile()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/oplus/pantanal/plugin/bean/HashEntity;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    if-nez v0, :cond_1b

    goto :goto_1f

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1f
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {v0, v2, v1}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->hashEntity:Lcom/oplus/pantanal/plugin/bean/HashEntity;

    iget-object v1, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->remoteConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    iget-object v2, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->localConfig:Lcom/oplus/pantanal/plugin/bean/ConfigBean;

    iget-object v3, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->parent:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->child:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/pantanal/plugin/bean/PluginUpdateBean;->soFile:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PluginUpdateBean(hashEntity="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", remoteConfig="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", localConfig="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", parent="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", child="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", soFile="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
