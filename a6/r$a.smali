.class public abstract La6/r$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La6/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La6/r$a$b;,
        La6/r$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()La6/t;
    .registers 3

    instance-of v0, p0, La6/r$a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p0, La6/r$a$b;

    goto :goto_9

    :cond_8
    move-object p0, v1

    :goto_9
    if-eqz p0, :cond_d

    iget-object v1, p0, La6/r$a$b;->a:La6/t;

    :cond_d
    return-object v1
.end method
