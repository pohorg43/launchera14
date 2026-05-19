.class public final Lm7/i0;
.super Ll4/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm7/i0$a;
    }
.end annotation


# static fields
.field public static final b:Lm7/i0$a;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lm7/i0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm7/i0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lm7/i0;->b:Lm7/i0$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lm7/i0;->b:Lm7/i0$a;

    invoke-direct {p0, v0}, Ll4/a;-><init>(Ll4/f$b;)V

    iput-object p1, p0, Lm7/i0;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm7/i0;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lm7/i0;

    iget-object p0, p0, Lm7/i0;->a:Ljava/lang/String;

    iget-object p1, p1, Lm7/i0;->a:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lm7/i0;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CoroutineName("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lm7/i0;->a:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
