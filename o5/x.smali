.class public final Lo5/x;
.super Lo5/f;
.source ""

# interfaces
.implements Ly5/m;


# instance fields
.field public final b:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh6/f;Ljava/lang/Enum;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Ljava/lang/Enum<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo5/f;-><init>(Lh6/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lo5/x;->b:Ljava/lang/Enum;

    return-void
.end method


# virtual methods
.method public d()Lh6/b;
    .registers 2

    iget-object p0, p0, Lo5/x;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p0

    :goto_11
    const-string v0, "enumClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo5/d;->a(Ljava/lang/Class;)Lh6/b;

    move-result-object p0

    return-object p0
.end method

.method public e()Lh6/f;
    .registers 1

    iget-object p0, p0, Lo5/x;->b:Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    return-object p0
.end method
