.class public final Lo7/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo7/j$a;,
        Lo7/j$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation


# static fields
.field public static final b:Lo7/j$b;


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lo7/j$b;

    invoke-direct {v0}, Lo7/j$b;-><init>()V

    sput-object v0, Lo7/j;->b:Lo7/j$b;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo7/j;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    iget-object p0, p0, Lo7/j;->a:Ljava/lang/Object;

    instance-of v0, p1, Lo7/j;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    goto :goto_14

    :cond_8
    check-cast p1, Lo7/j;

    iget-object p1, p1, Lo7/j;->a:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x1

    :goto_14
    return v1
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lo7/j;->a:Ljava/lang/Object;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_a
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object p0, p0, Lo7/j;->a:Ljava/lang/Object;

    instance-of v0, p0, Lo7/j$a;

    if-eqz v0, :cond_d

    check-cast p0, Lo7/j$a;

    invoke-virtual {p0}, Lo7/j$a;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_23

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_23
    return-object p0
.end method
