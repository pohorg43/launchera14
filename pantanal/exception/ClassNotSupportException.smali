.class public final Lpantanal/exception/ClassNotSupportException;
.super Ljava/lang/RuntimeException;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/exception/ClassNotSupportException$a;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/exception/ClassNotSupportException$a;

.field private static final MSG_NOT_SUPPORT:Ljava/lang/String; = "\nCLASS NOT SUPPORT ! NOT SUPPORT CLASS is: "


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/exception/ClassNotSupportException$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/exception/ClassNotSupportException$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/exception/ClassNotSupportException;->Companion:Lpantanal/exception/ClassNotSupportException$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "\nCLASS NOT SUPPORT ! NOT SUPPORT CLASS is: "

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "\nCLASS NOT SUPPORT ! NOT SUPPORT CLASS is:  + "

    invoke-static {v0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
