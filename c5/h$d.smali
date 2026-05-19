.class public final Lc5/h$d;
.super Lc5/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lc5/g$e;

.field public final b:Lc5/g$e;


# direct methods
.method public constructor <init>(Lc5/g$e;Lc5/g$e;)V
    .registers 4

    const-string v0, "getterSignature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc5/h;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lc5/h$d;->a:Lc5/g$e;

    iput-object p2, p0, Lc5/h$d;->b:Lc5/g$e;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc5/h$d;->a:Lc5/g$e;

    iget-object p0, p0, Lc5/g$e;->b:Ljava/lang/String;

    return-object p0
.end method
