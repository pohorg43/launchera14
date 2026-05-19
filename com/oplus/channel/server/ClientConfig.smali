.class public final Lcom/oplus/channel/server/ClientConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/ClientConfig$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u001e\b\u0086\b\u0018\u0000 &2\u00020\u0001:\u0001&BM\u0012\b\b\u0002\u0010\r\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0010\u001a\u00020\u0007\u0012\b\b\u0002\u0010\u0011\u001a\u00020\t\u0012\b\b\u0002\u0010\u0012\u001a\u00020\t\u0012\b\b\u0002\u0010\u0013\u001a\u00020\t¢\u0006\u0004\b$\u0010%J\b\u0010\u0003\u001a\u00020\u0002H\u0016J\t\u0010\u0004\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0005\u001a\u00020\u0002HÆ\u0003J\t\u0010\u0006\u001a\u00020\u0002HÆ\u0003J\t\u0010\b\u001a\u00020\u0007HÆ\u0003J\t\u0010\n\u001a\u00020\tHÆ\u0003J\t\u0010\u000b\u001a\u00020\tHÆ\u0003J\t\u0010\f\u001a\u00020\tHÆ\u0003JO\u0010\u0014\u001a\u00020\u00002\b\b\u0002\u0010\r\u001a\u00020\u00022\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00022\b\b\u0002\u0010\u0010\u001a\u00020\u00072\b\b\u0002\u0010\u0011\u001a\u00020\t2\b\b\u0002\u0010\u0012\u001a\u00020\t2\b\b\u0002\u0010\u0013\u001a\u00020\tHÆ\u0001J\t\u0010\u0015\u001a\u00020\u0007HÖ\u0001J\u0013\u0010\u0017\u001a\u00020\t2\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0018\u001a\u0004\b\u0019\u0010\u001aR\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u0018\u001a\u0004\b\u001b\u0010\u001aR\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0018\u001a\u0004\b\u001c\u0010\u001aR\u0019\u0010\u0010\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0019\u0010\u0011\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010 \u001a\u0004\b\u0011\u0010!R\u0019\u0010\u0012\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010 \u001a\u0004\b\"\u0010!R\u0019\u0010\u0013\u001a\u00020\t8\u0006@\u0006¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b#\u0010!¨\u0006\'"
    }
    d2 = {
        "Lcom/oplus/channel/server/ClientConfig;",
        "",
        "",
        "toString",
        "component1",
        "component2",
        "component3",
        "",
        "component4",
        "",
        "component5",
        "component6",
        "component7",
        "clientPackage",
        "providerAuthority",
        "serviceComponent",
        "aliveType",
        "isHost",
        "needNotify",
        "needKeepAlive",
        "copy",
        "hashCode",
        "other",
        "equals",
        "Ljava/lang/String;",
        "getClientPackage",
        "()Ljava/lang/String;",
        "getProviderAuthority",
        "getServiceComponent",
        "I",
        "getAliveType",
        "()I",
        "Z",
        "()Z",
        "getNeedNotify",
        "getNeedKeepAlive",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V",
        "Companion",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final ALIVE_TYPE_ALWAYS:I = 0x2

.field public static final ALIVE_TYPE_ALWAYS_IMPORTANT:I = 0x3

.field public static final ALIVE_TYPE_CALL:I = 0x1

.field public static final ALIVE_TYPE_DEFAULT:I

.field public static final Companion:Lcom/oplus/channel/server/ClientConfig$Companion;


# instance fields
.field private final aliveType:I

.field private final clientPackage:Ljava/lang/String;

.field private final isHost:Z

.field private final needKeepAlive:Z

.field private final needNotify:Z

.field private final providerAuthority:Ljava/lang/String;

.field private final serviceComponent:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/ClientConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/ClientConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/ClientConfig;->Companion:Lcom/oplus/channel/server/ClientConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V
    .registers 14

    const-string v1, "clientPackage"

    const-string v3, "providerAuthority"

    const-string v5, "serviceComponent"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    iput-object p2, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    iput p4, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    iput-boolean p5, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    iput-boolean p6, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    iput-boolean p7, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 12

    and-int/lit8 p9, p8, 0x1

    const-string v0, ""

    if-eqz p9, :cond_7

    move-object p1, v0

    :cond_7
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    move-object p2, v0

    :cond_c
    and-int/lit8 p9, p8, 0x4

    if-eqz p9, :cond_11

    move-object p3, v0

    :cond_11
    and-int/lit8 p9, p8, 0x8

    const/4 v0, 0x0

    if-eqz p9, :cond_17

    move p4, v0

    :cond_17
    and-int/lit8 p9, p8, 0x10

    const/4 v1, 0x1

    if-eqz p9, :cond_1d

    move p5, v1

    :cond_1d
    and-int/lit8 p9, p8, 0x20

    if-eqz p9, :cond_22

    move p6, v0

    :cond_22
    and-int/lit8 p8, p8, 0x40

    if-eqz p8, :cond_27

    move p7, v1

    :cond_27
    invoke-direct/range {p0 .. p7}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/oplus/channel/server/ClientConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZILjava/lang/Object;)Lcom/oplus/channel/server/ClientConfig;
    .registers 15

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_6

    iget-object p1, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    :cond_6
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_c

    iget-object p2, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    :cond_c
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_13

    iget-object p3, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    :cond_13
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_1a

    iget p4, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    :cond_1a
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_21

    iget-boolean p5, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    :cond_21
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_28

    iget-boolean p6, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    :cond_28
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_2f

    iget-boolean p7, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    :cond_2f
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/oplus/channel/server/ClientConfig;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)Lcom/oplus/channel/server/ClientConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    return-object p0
.end method

.method public final component4()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    return p0
.end method

.method public final component5()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    return p0
.end method

.method public final component6()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    return p0
.end method

.method public final component7()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)Lcom/oplus/channel/server/ClientConfig;
    .registers 16

    const-string p0, "clientPackage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "providerAuthority"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "serviceComponent"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/oplus/channel/server/ClientConfig;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/oplus/channel/server/ClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/oplus/channel/server/ClientConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/oplus/channel/server/ClientConfig;

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget v1, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    iget v3, p1, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    if-eq v1, v3, :cond_34

    return v2

    :cond_34
    iget-boolean v1, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    iget-boolean v3, p1, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    if-eq v1, v3, :cond_3b

    return v2

    :cond_3b
    iget-boolean v1, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    iget-boolean v3, p1, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    if-eq v1, v3, :cond_42

    return v2

    :cond_42
    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    iget-boolean p1, p1, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    if-eq p0, p1, :cond_49

    return v2

    :cond_49
    return v0
.end method

.method public final getAliveType()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    return p0
.end method

.method public final getClientPackage()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    return-object p0
.end method

.method public final getNeedKeepAlive()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    return p0
.end method

.method public final getNeedNotify()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    return p0
.end method

.method public final getProviderAuthority()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    return-object p0
.end method

.method public final getServiceComponent()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    move v1, v2

    :cond_22
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/oplus/channel/server/ClientConfig;->needNotify:Z

    if-eqz v1, :cond_2a

    move v1, v2

    :cond_2a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->needKeepAlive:Z

    if-eqz p0, :cond_32

    goto :goto_33

    :cond_32
    move v2, p0

    :goto_33
    add-int/2addr v0, v2

    return v0
.end method

.method public final isHost()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/channel/server/ClientConfig;->isHost:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "ClientConfig(clientPackage=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->clientPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', providerAuthority=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->providerAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', serviceComponent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/ClientConfig;->serviceComponent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', aliveType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/channel/server/ClientConfig;->aliveType:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
