.class public final Ll5/q;
.super Lj5/b;
.source ""

# interfaces
.implements Li5/v;


# instance fields
.field public final b:Li5/o0;


# direct methods
.method public constructor <init>(Lj5/h;Li5/o0;)V
    .registers 4

    const-string v0, "annotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correspondingProperty"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lj5/b;-><init>(Lj5/h;)V

    iput-object p2, p0, Ll5/q;->b:Li5/o0;

    return-void
.end method
