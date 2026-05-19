.class public abstract Lu6/o;
.super Ll5/c0;
.source ""


# instance fields
.field public final g:Lx6/m;


# direct methods
.method public constructor <init>(Lh6/c;Lx6/m;Li5/e0;)V
    .registers 5

    const-string v0, "fqName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, Ll5/c0;-><init>(Li5/e0;Lh6/c;)V

    iput-object p2, p0, Lu6/o;->g:Lx6/m;

    return-void
.end method


# virtual methods
.method public abstract D0(Lu6/k;)V
.end method

.method public abstract z0()Lu6/h;
.end method
