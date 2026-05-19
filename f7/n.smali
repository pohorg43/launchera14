.class public abstract Lf7/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf7/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf7/n$b;,
        Lf7/n$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/n;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Li5/x;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lf7/f$a;->a(Lf7/f;Li5/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lf7/n;->a:Ljava/lang/String;

    return-object p0
.end method
