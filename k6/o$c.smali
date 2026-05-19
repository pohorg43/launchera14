.class public Lk6/o$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk6/o$c$a;
    }
.end annotation


# static fields
.field public static final b:Lk6/o$c;


# instance fields
.field public final a:Lk6/o$c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lk6/o$c;

    sget-object v1, Lk6/o$c$a;->a:Lk6/o$c$a;

    const-string v2, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lk6/o$c;-><init>(Lk6/o$c$a;Ljava/lang/String;)V

    sput-object v0, Lk6/o$c;->b:Lk6/o$c;

    return-void
.end method

.method public constructor <init>(Lk6/o$c$a;Ljava/lang/String;)V
    .registers 3

    if-eqz p2, :cond_8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk6/o$c;->a:Lk6/o$c$a;

    return-void

    :cond_8
    const/4 p0, 0x4

    invoke-static {p0}, Lk6/o$c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 11

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p0, v3, :cond_f

    if-eq p0, v2, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "@NotNull method %s.%s must not return null"

    goto :goto_11

    :cond_f
    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    :goto_11
    if-eq p0, v3, :cond_1b

    if-eq p0, v2, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v1

    :goto_1c
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "success"

    const-string v7, "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$OverrideCompatibilityInfo"

    const/4 v8, 0x0

    if-eq p0, v3, :cond_31

    if-eq p0, v2, :cond_31

    if-eq p0, v1, :cond_2e

    if-eq p0, v0, :cond_31

    aput-object v7, v5, v8

    goto :goto_35

    :cond_2e
    aput-object v6, v5, v8

    goto :goto_35

    :cond_31
    const-string v9, "debugMessage"

    aput-object v9, v5, v8

    :goto_35
    packed-switch p0, :pswitch_data_76

    aput-object v6, v5, v3

    goto :goto_47

    :pswitch_3b  #0x6
    const-string v6, "getDebugMessage"

    aput-object v6, v5, v3

    goto :goto_47

    :pswitch_40  #0x5
    const-string v6, "getResult"

    aput-object v6, v5, v3

    goto :goto_47

    :pswitch_45  #0x1, 0x2, 0x3, 0x4
    aput-object v7, v5, v3

    :goto_47
    if-eq p0, v3, :cond_5a

    if-eq p0, v2, :cond_55

    if-eq p0, v1, :cond_50

    if-eq p0, v0, :cond_50

    goto :goto_5e

    :cond_50
    const-string v6, "<init>"

    aput-object v6, v5, v2

    goto :goto_5e

    :cond_55
    const-string v6, "conflict"

    aput-object v6, v5, v2

    goto :goto_5e

    :cond_5a
    const-string v6, "incompatible"

    aput-object v6, v5, v2

    :goto_5e
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_70

    if-eq p0, v2, :cond_70

    if-eq p0, v1, :cond_70

    if-eq p0, v0, :cond_70

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_75

    :cond_70
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    :goto_75
    throw p0

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_45  #00000001
        :pswitch_45  #00000002
        :pswitch_45  #00000003
        :pswitch_45  #00000004
        :pswitch_40  #00000005
        :pswitch_3b  #00000006
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)Lk6/o$c;
    .registers 3

    new-instance v0, Lk6/o$c;

    sget-object v1, Lk6/o$c$a;->c:Lk6/o$c$a;

    invoke-direct {v0, v1, p0}, Lk6/o$c;-><init>(Lk6/o$c$a;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lk6/o$c;
    .registers 3

    new-instance v0, Lk6/o$c;

    sget-object v1, Lk6/o$c$a;->b:Lk6/o$c$a;

    invoke-direct {v0, v1, p0}, Lk6/o$c;-><init>(Lk6/o$c$a;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public c()Lk6/o$c$a;
    .registers 1

    iget-object p0, p0, Lk6/o$c;->a:Lk6/o$c$a;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-static {p0}, Lk6/o$c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
