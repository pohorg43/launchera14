.class public abstract Lg6/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg6/d$b;,
        Lg6/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final toString()Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Lg6/d;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
