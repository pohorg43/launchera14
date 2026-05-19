.class public Ll5/g$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll5/g;-><init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ly6/s0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lh6/f;

.field public final synthetic b:Ll5/g;


# direct methods
.method public constructor <init>(Ll5/g;Lh6/f;)V
    .registers 3

    iput-object p1, p0, Ll5/g$b;->b:Ll5/g;

    iput-object p2, p0, Ll5/g$b;->a:Lh6/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .registers 8

    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ly6/g1;->c:Ly6/g1;

    iget-object v1, p0, Ll5/g$b;->b:Ll5/g;

    invoke-virtual {v1}, Ll5/g;->h()Ly6/j1;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lr6/h;

    new-instance v5, Ll5/h;

    invoke-direct {v5, p0}, Ll5/h;-><init>(Ll5/g$b;)V

    const-string p0, "getScope"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lx6/e;->e:Lx6/m;

    const-string v6, "NO_LOCKS"

    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p0, v5}, Lr6/h;-><init>(Lx6/m;Lkotlin/jvm/functions/Function0;)V

    invoke-static {v0, v1, v2, v3, v4}, Ly6/m0;->i(Ly6/g1;Ly6/j1;Ljava/util/List;ZLr6/i;)Ly6/s0;

    move-result-object p0

    return-object p0
.end method
