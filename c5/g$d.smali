.class public final Lc5/g$d;
.super Lc5/g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc5/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final a:Lg6/d$b;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg6/d$b;)V
    .registers 3

    const-string v0, "signature"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lc5/g;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lc5/g$d;->a:Lg6/d$b;

    invoke-virtual {p1}, Lg6/d$b;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lc5/g$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc5/g$d;->b:Ljava/lang/String;

    return-object p0
.end method
