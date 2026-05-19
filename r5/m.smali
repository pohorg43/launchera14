.class public final Lr5/m;
.super Ln6/a;
.source ""


# instance fields
.field public final a:Li5/l;


# direct methods
.method public constructor <init>(Li5/l;)V
    .registers 3

    const-string v0, "target"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ln6/a;-><init>()V

    iput-object p1, p0, Lr5/m;->a:Li5/l;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 1

    const/4 p0, 0x2

    return p0
.end method

.method public bridge synthetic b()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
