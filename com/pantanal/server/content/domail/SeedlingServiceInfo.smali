.class public final Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018\u0000  2\u00020\u0001:\u0001 B1\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\t\u0010\u0003\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0007HÆ\u0003J=\u0010\u000e\u001a\u00020\u00002\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\t\u0010\u000f\u001a\u00020\u0002HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0010HÖ\u0001J\u0013\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0015\u001a\u0004\b\u0018\u0010\u0017R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0015\u001a\u0004\b\u001a\u0010\u0017R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006!"
    }
    d2 = {
        "Lcom/pantanal/server/content/domail/SeedlingServiceInfo;",
        "",
        "",
        "component1",
        "component2",
        "component3",
        "component4",
        "Landroid/graphics/drawable/Drawable;",
        "component5",
        "serviceId",
        "name",
        "subDomain",
        "subDomainDesc",
        "icon",
        "copy",
        "toString",
        "",
        "hashCode",
        "other",
        "",
        "equals",
        "Ljava/lang/String;",
        "getServiceId",
        "()Ljava/lang/String;",
        "getName",
        "getSubDomain",
        "getSubDomainDesc",
        "Landroid/graphics/drawable/Drawable;",
        "getIcon",
        "()Landroid/graphics/drawable/Drawable;",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V",
        "Companion",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;


# instance fields
.field private final icon:Landroid/graphics/drawable/Drawable;

.field private final name:Ljava/lang/String;

.field private final serviceId:Ljava/lang/String;

.field private final subDomain:Ljava/lang/String;

.field private final subDomainDesc:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->Companion:Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    const-string v0, "serviceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDomain"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subDomainDesc"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    iput-object p2, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    iput-object p4, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    iput-object p5, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public static synthetic copy$default(Lcom/pantanal/server/content/domail/SeedlingServiceInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
    .registers 11

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_6

    iget-object p1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    :cond_6
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_c

    iget-object p2, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    :cond_c
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_1a

    iget-object p4, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    :cond_1a
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_21

    iget-object p5, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    :cond_21
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final empty()Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->Companion:Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;

    invoke-virtual {v0}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo$Companion;->empty()Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Lcom/pantanal/server/content/domail/SeedlingServiceInfo;
    .registers 12

    const-string p0, "serviceId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDomain"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "subDomainDesc"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    iget-object v3, p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubDomain()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    return-object p0
.end method

.method public final getSubDomainDesc()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-nez p0, :cond_22

    const/4 p0, 0x0

    goto :goto_26

    :cond_22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result p0

    :goto_26
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "SeedlingServiceInfo(serviceId="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->serviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subDomainDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->subDomainDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", icon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/pantanal/server/content/domail/SeedlingServiceInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
