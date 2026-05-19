.class public final Ll5/o;
.super Ll5/c0;
.source ""


# direct methods
.method public constructor <init>(Li5/e0;Lh6/c;)V
    .registers 4

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Ll5/c0;-><init>(Li5/e0;Lh6/c;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic l()Lr6/i;
    .registers 1

    sget-object p0, Lr6/i$b;->b:Lr6/i$b;

    return-object p0
.end method
