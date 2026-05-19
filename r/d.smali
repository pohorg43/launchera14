.class public Lr/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/airbnb/lottie/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lr/c;

    invoke-direct {v0}, Lr/c;-><init>()V

    sput-object v0, Lr/d;->a:Lcom/airbnb/lottie/m;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lr/d;->a:Lcom/airbnb/lottie/m;

    check-cast v0, Lr/c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lr/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    sget-object v0, Lr/d;->a:Lcom/airbnb/lottie/m;

    check-cast v0, Lr/c;

    invoke-virtual {v0, p0, p1}, Lr/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
