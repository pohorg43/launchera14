.class public final Lw4/c$a;
.super Lw4/c;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/c$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lw4/c;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lw4/c;-><init>()V

    return-void
.end method

.method private final writeReplace()Ljava/lang/Object;
    .registers 1

    sget-object p0, Lw4/c$a$a;->a:Lw4/c$a$a;

    return-object p0
.end method


# virtual methods
.method public a(I)I
    .registers 2

    sget-object p0, Lw4/c;->b:Lw4/c;

    invoke-virtual {p0, p1}, Lw4/c;->a(I)I

    move-result p0

    return p0
.end method

.method public b()I
    .registers 1

    sget-object p0, Lw4/c;->b:Lw4/c;

    invoke-virtual {p0}, Lw4/c;->b()I

    move-result p0

    return p0
.end method

.method public c(II)I
    .registers 3

    sget-object p0, Lw4/c;->b:Lw4/c;

    invoke-virtual {p0, p1, p2}, Lw4/c;->c(II)I

    move-result p0

    return p0
.end method
