.class public final Lz6/q;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Ly6/l0;

.field public final b:Lz6/q;


# direct methods
.method public constructor <init>(Ly6/l0;Lz6/q;)V
    .registers 4

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz6/q;->a:Ly6/l0;

    iput-object p2, p0, Lz6/q;->b:Lz6/q;

    return-void
.end method
