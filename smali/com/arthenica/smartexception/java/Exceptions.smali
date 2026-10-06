.class public Lcom/arthenica/smartexception/java/Exceptions;
.super Ljava/lang/Object;
.source "Exceptions.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/arthenica/smartexception/java/Exceptions$1;

    invoke-direct {v0}, Lcom/arthenica/smartexception/java/Exceptions$1;-><init>()V

    invoke-static {v0}, Lcom/arthenica/smartexception/AbstractExceptions;->setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V

    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearGroupPackages()V
    .locals 0

    .line 123
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->clearGroupPackages()V

    .line 124
    return-void
.end method

.method public static clearIgnorePackages()V
    .locals 0

    .line 160
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->clearIgnorePackages()V

    .line 161
    return-void
.end method

.method public static clearRootPackages()V
    .locals 0

    .line 107
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->clearRootPackages()V

    .line 108
    return-void
.end method

.method public static containsCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 310
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->containsCause(Ljava/lang/Throwable;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static containsCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "causeMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 328
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->containsCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getAllMessages(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 294
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->getAllMessages(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 338
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I

    .line 354
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getCause(Ljava/lang/Throwable;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static getIgnoreAllCauses()Z
    .locals 1

    .line 171
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->getIgnoreAllCauses()Z

    move-result v0

    return v0
.end method

.method public static getStackTraceElementSerializer()Lcom/arthenica/smartexception/StackTraceElementSerializer;
    .locals 1

    .line 133
    invoke-static {}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceElementSerializer()Lcom/arthenica/smartexception/StackTraceElementSerializer;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;

    .line 196
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I

    .line 272
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "maxDepth"    # I
    .param p2, "ignoreAllCauses"    # Z

    .line 284
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "rootPackage"    # Ljava/lang/String;

    .line 249
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "rootPackage"    # Ljava/lang/String;
    .param p2, "groupPackage"    # Ljava/lang/String;

    .line 261
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 224
    .local p1, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p4, "ignoreAllCauses"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 238
    .local p1, "rootPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, "groupPackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, "ignorePackageSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;Z)Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "ignoreAllCauses"    # Z

    .line 211
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->getStackTraceString(Ljava/lang/Throwable;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static registerGroupPackage(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageString"    # Ljava/lang/String;

    .line 116
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->registerGroupPackage(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static registerIgnorePackage(Ljava/lang/String;Z)V
    .locals 0
    .param p0, "packageString"    # Ljava/lang/String;
    .param p1, "ignoreCauseClasses"    # Z

    .line 153
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->registerIgnorePackage(Ljava/lang/String;Z)V

    .line 154
    return-void
.end method

.method public static registerRootPackage(Ljava/lang/String;)V
    .locals 0
    .param p0, "packageString"    # Ljava/lang/String;

    .line 100
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->registerRootPackage(Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 369
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 420
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "causeMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 386
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p2, "causeMessage"    # Ljava/lang/String;
    .param p3, "maxDepth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 404
    .local p1, "causeClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0, p1, p2, p3}, Lcom/arthenica/smartexception/AbstractExceptions;->searchCause(Ljava/lang/Throwable;Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method

.method public static setIgnoreAllCauses(Z)V
    .locals 0
    .param p0, "ignoreAllCauses"    # Z

    .line 182
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->setIgnoreAllCauses(Z)V

    .line 183
    return-void
.end method

.method public static setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V
    .locals 0
    .param p0, "stackTraceElementSerializer"    # Lcom/arthenica/smartexception/StackTraceElementSerializer;

    .line 143
    invoke-static {p0}, Lcom/arthenica/smartexception/AbstractExceptions;->setStackTraceElementSerializer(Lcom/arthenica/smartexception/StackTraceElementSerializer;)V

    .line 144
    return-void
.end method
