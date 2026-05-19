.class public final Lio/branch/search/internal/ui/StringResolver$Template;
.super Lio/branch/search/internal/ui/StringResolver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/internal/ui/StringResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Template"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/internal/ui/StringResolver$Template$Companion;,
        Lio/branch/search/internal/ui/StringResolver$Template$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0087\b\u0018\u0000 \u000b2\u00020\u0001:\u0002\f\u000bB/\b\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0001\u0012\b\u0010\b\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\r"
    }
    d2 = {
        "Lio/branch/search/internal/ui/StringResolver$Template;",
        "Lio/branch/search/internal/ui/StringResolver;",
        "",
        "seen1",
        "",
        "template",
        "field",
        "Lz7/g1;",
        "serializationConstructorMarker",
        "<init>",
        "(ILjava/lang/String;Lio/branch/search/internal/ui/StringResolver;Lz7/g1;)V",
        "Companion",
        "serializer",
        "BranchSearchSDK_forPartnersRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation

.annotation runtime Lkotlinx/serialization/a;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/internal/ui/StringResolver$Template$Companion;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lio/branch/search/internal/ui/StringResolver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/branch/search/internal/ui/StringResolver$Template$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/internal/ui/StringResolver$Template$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/internal/ui/StringResolver$Template;->Companion:Lio/branch/search/internal/ui/StringResolver$Template$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lio/branch/search/internal/ui/StringResolver;)V
    .registers 5

    invoke-direct {p0, p1}, Lio/branch/search/internal/ui/StringResolver;-><init>(I)V

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_18

    iput-object p2, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_10

    iput-object p3, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    return-void

    :cond_10
    new-instance p0, Lw7/b;

    const-string p1, "field"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    new-instance p0, Lw7/b;

    const-string p1, "template"

    invoke-direct {p0, p1}, Lw7/b;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_1f

    instance-of v0, p1, Lio/branch/search/internal/ui/StringResolver$Template;

    if-eqz v0, :cond_1d

    check-cast p1, Lio/branch/search/internal/ui/StringResolver$Template;

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    iget-object v1, p1, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    iget-object p1, p1, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_15
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Template(template="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/internal/ui/StringResolver$Template;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", field="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/internal/ui/StringResolver$Template;->b:Lio/branch/search/internal/ui/StringResolver;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
