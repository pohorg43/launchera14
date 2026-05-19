.class public final Lcom/oplus/channel/server/data/Command;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/channel/server/data/Command$Companion;,
        Lcom/oplus/channel/server/data/Command$Method;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0012\n\u0002\b\r\u0018\u0000 \u00182\u00020\u0001:\u0002\u0018\u0019B1\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\t\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0019\u0010\u0005\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0007\u0010\bR\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u001b\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u001a"
    }
    d2 = {
        "Lcom/oplus/channel/server/data/Command;",
        "",
        "",
        "toString",
        "",
        "methodType",
        "I",
        "getMethodType",
        "()I",
        "callbackId",
        "Ljava/lang/String;",
        "getCallbackId",
        "()Ljava/lang/String;",
        "",
        "params",
        "[B",
        "getParams",
        "()[B",
        "businessTag",
        "Ljava/lang/Object;",
        "getBusinessTag",
        "()Ljava/lang/Object;",
        "<init>",
        "(ILjava/lang/String;[BLjava/lang/Object;)V",
        "Companion",
        "Method",
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
.field public static final Companion:Lcom/oplus/channel/server/data/Command$Companion;

.field public static final DATA_ITEM_END:I = 0x64

.field public static final DATA_TYPE_BYTE_ARRAY:I = 0x3

.field public static final DATA_TYPE_INT:I = 0x1

.field public static final DATA_TYPE_STRING:I = 0x2

.field public static final DATA_VERSION_OF_TYPE:I = 0x1


# instance fields
.field private final businessTag:Ljava/lang/Object;

.field private final callbackId:Ljava/lang/String;

.field private final methodType:I

.field private final params:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/channel/server/data/Command$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/channel/server/data/Command$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/channel/server/data/Command;->Companion:Lcom/oplus/channel/server/data/Command$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BLjava/lang/Object;)V
    .registers 6

    const-string v0, "callbackId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/channel/server/data/Command;->methodType:I

    iput-object p2, p0, Lcom/oplus/channel/server/data/Command;->callbackId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/channel/server/data/Command;->params:[B

    iput-object p4, p0, Lcom/oplus/channel/server/data/Command;->businessTag:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;[BLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 8

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_6

    const-string p2, ""

    :cond_6
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_c

    move-object p3, v0

    :cond_c
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_11

    move-object p4, v0

    :cond_11
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oplus/channel/server/data/Command;-><init>(ILjava/lang/String;[BLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getBusinessTag()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->businessTag:Ljava/lang/Object;

    return-object p0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->callbackId:Ljava/lang/String;

    return-object p0
.end method

.method public final getMethodType()I
    .registers 1

    iget p0, p0, Lcom/oplus/channel/server/data/Command;->methodType:I

    return p0
.end method

.method public final getParams()[B
    .registers 1

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->params:[B

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "Command(methodType="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oplus/channel/server/data/Command;->methodType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callbackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/channel/server/data/Command;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", businessTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/channel/server/data/Command;->businessTag:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
