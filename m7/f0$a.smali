.class public final Lm7/f0$a;
.super Ll4/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm7/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ll4/b<",
        "Ll4/e;",
        "Lm7/f0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    sget p1, Ll4/e;->J:I

    sget-object p1, Ll4/e$a;->a:Ll4/e$a;

    sget-object v0, Lm7/e0;->a:Lm7/e0;

    invoke-direct {p0, p1, v0}, Ll4/b;-><init>(Ll4/f$b;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
